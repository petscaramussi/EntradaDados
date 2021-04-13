# entrada_dados

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## O que é um Slider?

É um intervalo de valores contínuos que pode ser definidos com um "min" e "max" (mínimos e máximo ). Também é possível definir o numero de divisões.
```
min: 0, 
max: 100, 
divisions: 5,
```

### Estrutura
É definido por alguns atributos, como: "value", que define um valor inicial para o nosso slider. o "label" define um titulo para qual momento do slider estamos selecionando. o metodo "OnChanged" vai definir e captar todos os nossos movimentos. para fazer esse controles o mais indicado é se usar uma variável para isso.
```
Slider( 
      value: _currentSliderValue, 
      min: 0, 
      max: 100, 
      divisions: 5, 
      label: _currentSliderValue.round().toString(), 
      onChanged: (double value) { 
        setState(() { 
          _currentSliderValue = value; 
        });
```
o "SetState" é usado para definir execuções em tempo real.

### Estilo
Os principais atributos de estilo do Slider são "activeColor" e "inactiveColor" que definem a cor do Slider o "active" define a cor da barra e o "inactive" define a cor de fundo
```
activeColor: Colors.red, 
inactiveColor: Colors.purple,
```
