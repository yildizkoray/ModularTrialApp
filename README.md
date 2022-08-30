# ModularTrialApp

A simple module trial app

<p align="center">
<img src="/Images/ModuleDiagram.png"  width="600"/>
</p>

## Structure
```bash
⊢ Common/Shared
  ⊢ Additions(Extensions)
  ⊢ ModuleManager
    ⊢ ModuleDependencyManager
  
⊢ Scenes(Domain Module)
  ⊢ FirstModule
    ⊢ FirstModuleConcrete
    ⊢ FirstModuleProtocol
    
  ⊢ SecondModule
    ⊢ SecondModuleConcrete
    ⊢ SecondModuleProtocol
```
