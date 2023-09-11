## Variable Expansion

Variable expansion refers to when the variable refers to a static value. The variable can be said to 'expand' to reveal its value and this can be done either at compile time or runtime.

## Azure Pipelines

In Azure Pipelines, there are three different syntaxes that can be used to define variables inside a pipeline. These are:

- Template expression
- Macro
- Runtime expressions

Template expressions get processed at compile time whilst the other two get processed at runtime.

## Template Expression Variables

Template expression variables are set at compile time and DO NOT CHANGE (even if the variable is changed during runtime). They can be set to expand template parameters or variable parameters with the following syntax:

```YAML
${{ parameters.var }}
${{ variables.var }}
```

If a template expression variable isn't found, it will be represented by an empty string. They can be either keys or values in a YAML pipeline.

## Macro variables

Macro variables are expanded during runtime just before a task executes, and therefore can be changed during the run of the pipeline (before that step is run). It is called like this:

```YAML
$(var)
```

Macro variables that aren't expanded stay as they are, so the above would simply say $(var) in the pipeline. Macro variables can't be used as keys and can't be used in job names (but can be used in the displayName property).

## Runtime expression variables

Runtime are expanded when used as a value. They can be set like:

```YAML
$[variables.var]
```

They can't be used for keys and should primarily be used in conditions that check in order to support conditional execution of logic. They become empty strings when not set.

## Syntax to use

Template expression - Defining variable in a template that you don't want to change
Macro - When you're providing input for a task
Runtime - Conditional logic (unless that conditional logic relies on an empty string, in which case use macro syntax)


