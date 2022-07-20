def generate_gitignore():
    gitignore_content = """scripts/generate.py
Pipfile
Pipfile.lock"""
    with open("./.gitignore", "w") as gitignore:
        gitignore.write(gitignore_content)


def generate_readme():
    track_name_input = input("Enter track's name: ")
    track_slug = track_name_input.strip().lower()
    track_name = track_slug.capitalize()
    readme_content = f"""# Exercism Track {track_name}

Hello, I'm Łukasz. 👋

I'm a Computer Science (BSc) student at the [WSB Universities](https://wsb.pl/english/). This repository is a collection of solutions submitted to the [{track_name} track on Exercism][solutions] which I'm using to learn more.

## Found Issues?

Feel free to open [a new issue][new-issue] and/or [a Pull Request][new-pr], or add comments to my solutions [directly on Exercism][solutions]. Thank you in advance for your help! 💙

[new-issue]: https://github.com/lukaszklis/exercism-track-{track_slug}/issues/new
[new-pr]: https://github.com/lukaszklis/exercism-track-{track_slug}/compare
[solutions]: https://exercism.org/profiles/lukaszklis/solutions?track_slug={track_slug}
"""
    with open("./README.md", "w") as readme:
        readme.write(readme_content)


def main():
    # generate_gitignore()
    generate_readme()


main()
