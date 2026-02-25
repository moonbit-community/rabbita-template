///|
using @html {a, div, h1, h2, li, text, ul}

///|
using @rabbita {type Cmd, type Dispatch, type Html}

///|
enum Msg {
  Clicked
}

///|
struct Model {
  count : Int
}

///|
fn update(msg : Msg, model : Model) -> Model {
  match msg {
    Clicked => { count: model.count + 1 }
  }
}

///|
fn button(value : String, on_click~ : Cmd) -> Html {
  div(class="click-btn", on_click~, [text(value)])
}

///|
fn view(dispatch : Dispatch[Msg], model : Model) -> Html {
  div(class="app", [
    h1(class="title", "Hello Rabbita"),
    div(class="lead", "You built it successfully!"),
    div(class="actions", [
      button(
        "You clicked \{model.count} times",
        on_click=dispatch(Clicked),
      ),
    ]),
    div(class="next", [
      h2(class="next-title", "What's next"),
      ul(class="next-list", [
        li("Edit a MoonBit file while the dev server runs for instant refresh."),
        li([
          text("Explore "),
          a(
            class="inline-link",
            target=Blank,
            href="https://github.com/moonbit-community/rabbita",
            "tutorials and examples",
          ),
        ]),
      ]),
    ]),
  ])
}

///|
/// NOTE: This program is only available in the js backend,
/// see README.md to get started.
fn main {
  let app = @rabbita.simple_cell(model={ count: 0 }, update~, view~)
  @rabbita.new(app).mount("app")
}
