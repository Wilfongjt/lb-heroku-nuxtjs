GH_TOKEN=$1

echo "GH_TOKEN ${GH_TOKEN}"
#echo $(https://api.github.com/users/wilfongjt/repos)
#git subtree push --prefix lb-hero-app lb-hero-app-staging master
exit 0
install:
  - git subtree push --prefix lb-hero-app https://github.com/Wilfongjt/lb-hero-app-staging.git trunk
env:
  gh_api_key:
    secure: k/OxzF1ed3llrVi1eembA74ELB5e8QbnPsNumD3yjijBn96M7QC17zGFLOX+bNkBmvTZiUTCGyE9yxBeG3kPUoozKIXYrAzGUsEMsTJyBNeEG0s/7/kKgwjW8IkB5nSBRkrRcI2efc7ZpfvfxyM3m8OB0sT+yiBix2HIlEbVW34QtBqoLgFhybRm4jRQ3dpdtJwcGeNzSFZ4m6by/FpDiAX369t8GRrfkXuhg1mWHWZCF860aC3X9MYt1WxW+uiRgTwU3qdCi/DJyTmnT3crZgJ50oav+SiYjb3gh4XUfzmgpZpSJI7H8obtD/495STJ81fradrx81MyqKVQJiGp7UXbXUjOnywgGZ1nPo3APaCYcrE3Rx0Bh3ThEcvSGsWyUu11/wOEd4QveHWf2RslqIfEULZgOcQV/le+h8uiB9QIcFcKSQ0NP4G4vYZqkQvJLuYgayaJX/gIDqzw3eRKJqzxEodw5RAgzfS60MJ9fMKef1q+VAt1JLjr4xv8kQCYNGq8KzNQKbzFBbp1cdd2tI7pjIq7q7RGWXrUwva/7vZG5kshQJuZi3nlFY31eIBrsxi848aYrsU9c7RU/OmEZS4A484UNnw2YtJaLYorNmSsrTGc2//XSNrmZIwDL7ZTtqhR8JASzKRo33hrjMY8X16RbMddrLcTKhOatV2q4zY=



    language: node_js
    node_js:
     - stable
    env:
      gh_api_key:
        secure: k/OxzF1ed3llrVi1eembA74ELB5e8QbnPsNumD3yjijBn96M7QC17zGFLOX+bNkBmvTZiUTCGyE9yxBeG3kPUoozKIXYrAzGUsEMsTJyBNeEG0s/7/kKgwjW8IkB5nSBRkrRcI2efc7ZpfvfxyM3m8OB0sT+yiBix2HIlEbVW34QtBqoLgFhybRm4jRQ3dpdtJwcGeNzSFZ4m6by/FpDiAX369t8GRrfkXuhg1mWHWZCF860aC3X9MYt1WxW+uiRgTwU3qdCi/DJyTmnT3crZgJ50oav+SiYjb3gh4XUfzmgpZpSJI7H8obtD/495STJ81fradrx81MyqKVQJiGp7UXbXUjOnywgGZ1nPo3APaCYcrE3Rx0Bh3ThEcvSGsWyUu11/wOEd4QveHWf2RslqIfEULZgOcQV/le+h8uiB9QIcFcKSQ0NP4G4vYZqkQvJLuYgayaJX/gIDqzw3eRKJqzxEodw5RAgzfS60MJ9fMKef1q+VAt1JLjr4xv8kQCYNGq8KzNQKbzFBbp1cdd2tI7pjIq7q7RGWXrUwva/7vZG5kshQJuZi3nlFY31eIBrsxi848aYrsU9c7RU/OmEZS4A484UNnw2YtJaLYorNmSsrTGc2//XSNrmZIwDL7ZTtqhR8JASzKRo33hrjMY8X16RbMddrLcTKhOatV2q4zY=
    deploy:
      hk_api_key:
        secure: Oc4C3fzX5GqjZYZeSapxwy8l3OJ9rwBsw5ligfpMcQ7psW0G/9CmtyMJ/ySm1flmHKH8i3r10rbGOhfm8ex7+hVFtOP13I3PU6tZlvUkOSfEjlXEYsdu0VIbt/1tR+PD62OtKCG4VMUN/VYkafR4XEUHmpoErQnQuc7ndCg8O4IYpTQW2L1aeDyYT8oAOxcUZ01nEYrsZEa3ZVHSLlHRCXuuRmtSyqA2BmI34/s0hU8NFlpnC/37osvGREa8r8xMWE5mHYABi/uhQ/JMrmGGn7u6S+QZNjjgjU8l/GvOQKbJD+2lcDqG9+Ai0Dkd1VeFEgdorZY/n5ALE0FdKdKBzsD09+XCReJQvX/bBGptQVp1XZe8hO9PLgHBkfJ5P6tkc1XZRuDGFjL+SxZxqQVq66EL6xxKYGf7dsFTjpyzi5B4J3gd+kd68nasOgH5KgYBP7Zwz0vJWOce+xvJMzCtlD6XLcBL8tQ10tQDiQ37lY8ool6GZlQ+RMxz5FLoXnoghRD8jbE3G9pr68Thm/BqG+sF4K+CR7Wt2O5hXWiArBGYVGpeaSt28VMSKeGqlE6wbl9Ri20Jig18Vkv8hvSEZupVRgMg7/zhgsIVHrSBhBcfLYVgXaJP0x8xxNoYPwm0jXNBdvq7Ka053qlgwNWMXvj096hm4XEujtcW8+5/g4A=
      provider: script
      script: bash echo "staging"
      on:
        branch: trunk
