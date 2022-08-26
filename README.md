# Chae W.Sensor Management Server

채경훈 대표님 웨어러블 센서 통신 서버 개발 프로젝트

# 1. System Development Platform

- Python v.??
- Django v.??
- Django restframework v.??
- mariadb v.??


# 2. System Sequece Diagram

## 1. 커맨드 요청 시퀀스 다이어그램 (Command Request Squence Diagram)
```mermaid
sequenceDiagram
  autonumber
  사용자(User)->>+서버(Master): 타겟 센서에 대한 커맨드 실행 요청<BR>Command execution request for target sensor
  서버(Master)->>+저장소(DB): 커맨드 실행 요청 데이터 기록<BR>Command execution request data record
  저장소(DB)-->>-서버(Master): 데이터 기록 결과<BR>Data record result
  서버(Master)->>+저장소(DB): 커맨드 실행 요청 로그 기록<BR>Command execution request log record
  저장소(DB)-->>-서버(Master): 로그 기록 결과<BR>Log record result
  서버(Master)-->>-사용자(User): 커맨드 실행 요청 항목 처리 결과<BR>Command execution request item process result
```

## 2. 센서 데이터 기록 및 커맨드 실행 시퀀스 다이어그램 (Sensor data store and Command execute sequence diagram)
```mermaid
sequenceDiagram
  autonumber
  loop Sensing
    디바이스(Slave)->>디바이스(Slave): 센서 데이터 수집<BR>Collect sensing data
    Note right of 디바이스(Slave): 센서 데이터 수집 주기와 센서 데이터 송신 주기는 다름<BR>Sensing period is different with sensor data push to server period
  end
  loop Sensor Data Push to the Server
    디바이스(Slave)->>+서버(Master): 센서 데이터 송신(Push)<BR>Sensor data send(Push)
    서버(Master)->>+저장소(DB): 센서 데이터 기록<BR>Sensor data record
    저장소(DB)-->>-서버(Master): 센서 데이터 기록 결과<BR>Sensor data record result
    서버(Master)-->>-디바이스(Slave): 센서 데이터 수신 결과<BR>Sensor data receive result response
    서버(Master)->>서버(Master): 커맨드 실행 요청 큐 체크<BR>Command execution request queue check
    loop If command queue item for target sensor exists
      서버(Master)->>+디바이스(Slave): 커맨드 실행 요청<BR>Command execution request
      디바이스(Slave)->>디바이스(Slave): 커맨드 실행<BR>Command execution
      디바이스(Slave)-->>-서버(Master): 커맨드 실행 결과<BR>Command execution result response
      서버(Master)->>+저장소(DB): 큐 아이템의 커맨드 실행 결과 업데이트 기록<BR>Command execution result update of queue item
      저장소(DB)-->>-서버(Master): 업데이트 기록 결과<BR>Update record result
      서버(Master)->>+저장소(DB): 커맨드 실행 결과 로그 기록<BR>Command execution result log record
      저장소(DB)-->>-서버(Master): 로그 기록 결과<BR>Log recor result
    end
  end
```

## 3. 센서 데이터 조회 시퀀스 다이어그램 (Sensor data query sequence diagram)
```mermaid
sequenceDiagram
  autonumber
  사용자(User)->>+서버(Master): 센서 데이터 조회 요청<BR>Sensor data query request
  서버(Master)->>+저장소(DB): 센서 데이터 조회<BR>Sensor data query
  저장소(DB)-->>-서버(Master): 센서 데이터 조회 결과<BR>Sensor data query result
  서버(Master)-->>-사용자(User): 센서 데이터 조회 목록<BR>Sensor data query result list response
```

## 4. 커맨드 실행 요청 목록 및 상태 조회 시퀀스 다이어그램 (Command execution log query sequence diagram)
```mermaid
sequenceDiagram
  autonumber
  사용자(User)->>+서버(Master): 커맨드 실행 요청 목록 및 상태 조회 요청<BR>Command execution request list and status query request
  서버(Master)->>+저장소(DB): 커맨드 실행 요청 목록 및 상태 데이터 조회<BR>Command execution request list and status data query
  저장소(DB)-->>-서버(Master): 커맨드 실행 요청 목록 및 상태 조회 결과<BR>Command execution request list and status data query result
  서버(Master)-->>-사용자(User): 커맨드 실행 요청 목록 및 상태 조회 목록<BR>Command execution request list and status data query list response
```


## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

Already a pro? Just edit this README.md and make it your own. Want to make it easy? [Use the template at the bottom](#editing-this-readme)!

## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin http://gitlab.thinkforbl.com/milkt/chae-w.sensor-management-server.git
git branch -M main
git push -uf origin main
```

## Integrate with your tools

- [ ] [Set up project integrations](http://gitlab.thinkforbl.com/milkt/chae-w.sensor-management-server/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Automatically merge when pipeline succeeds](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing(SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!). Thank you to [makeareadme.com](https://www.makeareadme.com/) for this template.

## Suggestions for a good README
Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Name
Choose a self-explaining name for your project.

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
