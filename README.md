## Description
Project explorartion to apply design guideline by providing built-in style.

https://github.com/eriansha/DesignGuideline/assets/18480194/9c0561b1-bed7-4419-86b1-b1a0cb9dc723

### Available Style
- Button
  - Primary Blue
  - Primary Green
  - Secondary (Outline)
  - Destructive
- TextField
  - Primary
  - Search Field 
- Toggle
  - Checkbox 

## Usage
To use the built-in style, we need to pass the selected style to the style modifier
```swift


Button(action: {}) {
  Text("Press Me)
}.buttonStyle(PrimaryGreenButtonStyle())
```

To see the detail implementation, visit corresponding components inside `/views`

## Contributor
1. Fork the project
2. Create a new branch for your feature: `git checkout -b feature/new-feature`
3. Commit your changes and push to the branch: `git push origin feature/new-feature`
4. Create a pull request

