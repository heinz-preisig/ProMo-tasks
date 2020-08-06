import os
import sys

root = os.path.abspath(os.path.join(".."))
sys.path.extend([root, os.path.join(root, 'packages'), os.path.join(root, 'tasks')])

from Common.ontology_container import OntologyContainer
from OntologyBuilder.OntologyEquationEditor.resources import DotGraph

if __name__ == '__main__':
  ontology_name = "HAP_playground_02_extend_ontology"

  ontology_containere = OntologyContainer(ontology_name)
  variables = ontology_containere.vars
  indices = ontology_containere.indices

  # make_variable_equation_pngs(variables, ontology_name)

  dot = DotGraph(variables, indices, 10, ontology_name)
