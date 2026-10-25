import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const p=JSON.parse(readFileSync('reviewed-source.json'));
assert.equal(p.base,'143edc145427975344f62156cebf201990fad565');
const run=(name,args)=>execFileSync(name,args,{encoding:'utf8',maxBuffer:64e6,stdio:['pipe','pipe','pipe']});
assert.equal(run('calcit',['-v']).trim(),'0.30.1');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const query=(...args)=>{const r=JSON.parse(run('calcit',['calcit.cirru','query',...args,'--format','json']));assert.ok(!r.diagnostics?.some(d=>d.severity==='error'));return norm(r.data);};
const ns=[],defs=[];
for(const n of query('ns').namespaces){
 const info=query('ns',n);ns.push(info);
 const names=run('calcit',['calcit.cirru','query','defs',n]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);
 for(const d of names)defs.push(query('def',n+'/'+d));
}
const before=norm(p.before),after=structuredClone(before);
const dispatch=['::',"'Fn",['{}',[':args',['[]',"'Enum"]],[':return',"'Unit"]]];
const event=['hint-fn',['{}',[':args',['[]',['::',"'Map","'Tag","'Dynamic"],dispatch]],[':return',"'Unit"]]];
const text=['hint-fn',['{}',[':args',['[]',"'String"]],[':return',"'Unit"]]];
const sites=[
 ['app.comp.templates/comp-templates',[3,2,3,2,2,1,2,2,3,3,2,4,1,3,1],event,['e','d!']],
 ['app.comp.chatroom/comp-chatroom',[3,2,5,2,1,4,1],event,['e','d!']],
 ['app.comp.workspace/comp-card',[3,2,2,5,3],event,['e','d!']],
 ['app.comp.workspace/comp-slot',[3,2,2,4,1,3,1],event,['e','d!']],
 ['app.comp.workspace/comp-slot',[3,2,2,4,1,3,1,2,3],text,['text']]
];
// Deepest paths first: inserting a hint must not shift a nested reviewed target.
sites.sort((a,b)=>b[1].length-a[1].length);
const ops=[];
for(const[id,path,hint,args]of sites){
 const def=after.defs.find(d=>d.id===id);assert.ok(def);
 const fn=path.reduce((x,i)=>x[i],def.code);
 assert.equal(fn[0],'fn');assert.deepEqual(fn[1],args);assert.notEqual(fn[2]?.[0],'hint-fn');
 fn.splice(2,0,structuredClone(hint));
 ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(fn)]);
}
if(process.argv[2]==='apply'){
 assert.deepEqual({config:query('config'),namespaces:ns,defs},before);
 assert.equal(run('git',['hash-object','calcit.cirru']).trim(),p.blob);
 writeFileSync('acceptance/expected-source.json',JSON.stringify(after));
 writeFileSync('acceptance/operations.json',JSON.stringify(ops));
 const args=['calcit.cirru','edit','transaction','--file','acceptance/operations.json','--format','json'];
 const preview=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(preview.scoped_revision);
 writeFileSync('acceptance/preview.json',JSON.stringify(preview));
 writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',preview.scoped_revision]));
 writeFileSync('acceptance/modified-blob.txt',run('git',['hash-object','calcit.cirru']).trim());
 // A fresh invocation below reconstructs and verifies the complete after view.
 run(process.execPath,['prepare-formal.mjs','verify']);
 process.exit(0);
}
assert.equal(process.argv[2],'verify');
assert.deepEqual({config:query('config'),namespaces:ns,defs},after);
assert.equal(run('git',['hash-object','calcit.cirru']).trim(),readFileSync('acceptance/modified-blob.txt','utf8'));
const modules=[['Cumulo/cumulo-reel.calcit','0.0.59','0.0.61'],['Cumulo/cumulo-util.calcit','0.0.29','0.0.31'],['Respo/alerts.calcit','0.10.56','0.10.57'],['Respo/respo-feather.calcit','0.4.29','0.4.30'],['Respo/respo-message.calcit','0.0.37','0.0.38'],['Respo/respo-ui.calcit','0.7.41','0.8.0'],['Respo/respo.calcit','0.16.122','0.16.124'],['calcit-lang/js-ffi','0.2.3','0.2.5'],['calcit-lang/recollect','0.0.65','0.0.67'],['mvc-works/ws-edn.calcit','0.0.43','0.0.47']];
let deps=p.manifests['deps.cirru'].replace(':calcit-version |0.30.1-alpha.5',':calcit-version |0.30.1');
for(const[id,old,next]of modules){const from='|'+id+' |'+old;assert.equal(deps.split(from).length,2);deps=deps.replace(from,'|'+id+' |'+next);}
assert.equal(readFileSync('deps.cirru','utf8'),deps);
const pkg=JSON.parse(p.manifests['package.json']);pkg.dependencies['@calcit/procs']='0.30.1';assert.deepEqual(JSON.parse(readFileSync('package.json')),pkg);
const age='npmMinimalAgeGate: 0\n\n', exemption='npmPreapprovedPackages:\n  - "@calcit/procs@0.30.1-alpha.5"\n';
assert.equal(p.manifests['.yarnrc.yml'].split(age).length,2);
assert.equal(p.manifests['.yarnrc.yml'].split(exemption).length,2);
assert.equal(readFileSync('.yarnrc.yml','utf8'),p.manifests['.yarnrc.yml'].replace(age,'').replace(exemption,'').trimEnd()+'\n');
const lock=s=>s.split('\n\n').map(b=>b.startsWith('"@calcit/procs@npm:')?b.replace(/^  checksum:.*$/m,'  checksum: runtime-checksum'):b).join('\n\n');
assert.equal(lock(readFileSync('yarn.lock','utf8').replaceAll('0.30.1','0.30.1-alpha.5')),lock(p.manifests['yarn.lock']));
writeFileSync('acceptance/source-evidence.json',JSON.stringify({beforeBlob:p.blob,afterBlob:readFileSync('acceptance/modified-blob.txt','utf8'),fullSourceViewsMatch:true,ownedCallbackHints:sites.length,definitions:defs.length,attachedTests:defs.reduce((n,d)=>n+d.tests.length,0),moduleChanges:modules.length,protocolChanges:0,removedDisabledAgeGateAndObsoleteAlphaPreapprovalOnly:true}));
