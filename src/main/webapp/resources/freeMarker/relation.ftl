<?xml version="1.0" encoding="UTF-8"?>
<gexf xmlns="http://www.gexf.net/1.2draft" version="1.2" xmlns:viz="http://www.gexf.net/1.2draft/viz" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd">
  <meta lastmodifieddate="2014-01-30">
    <creator>Gephi 0.8.1</creator>
    <description></description>
  </meta>
  <graph defaultedgetype="undirected" mode="static">
    <attributes class="node" mode="static">
      <attribute id="modularity_class" title="Modularity Class" type="integer"></attribute>
    </attributes>
    <nodes>
      <node id="0" label="中心库">
        <attvalues>
          <attvalue for="modularity_class" value="0"></attvalue>
        </attvalues>
        <viz:size value="150"></viz:size>
        <viz:position x="-266" y="260" z="0.0"></viz:position>
        <viz:color r="235" g="81" b="72"></viz:color>
      </node>
      <node id="1" label="规整库">
        <attvalues>
          <attvalue for="modularity_class" value="0"></attvalue>
        </attvalues>
        <viz:size value="120"></viz:size>
        <viz:position x="-260" y="260" z="0.0"></viz:position>
        <viz:color r="116" g="159" b="131"></viz:color>
      </node>
      
      <node id="2" label="网格平台">
        <attvalues>
          <attvalue for="modularity_class" value="0"></attvalue>
        </attvalues>
        <viz:size value="120"></viz:size>
        <viz:position x="-265" y="258" z="0.0"></viz:position>
        <viz:color r="156" g="109" b="10"></viz:color>
      </node>
      
      
       <node id="3" label="中心库">
        <attvalues>
          <attvalue for="modularity_class" value="1"></attvalue>
        </attvalues>
        <viz:size value="150"></viz:size>
        <viz:position x="-266" y="260" z="0.0"></viz:position>
        <viz:color r="235" g="81" b="72"></viz:color>
      </node>
      <node id="4" label="规整库">
        <attvalues>
          <attvalue for="modularity_class" value="1"></attvalue>
        </attvalues>
        <viz:size value="120"></viz:size>
        <viz:position x="-260" y="260" z="0.0"></viz:position>
        <viz:color r="116" g="159" b="131"></viz:color>
      </node>
      
      <node id="5" label="网格平台">
        <attvalues>
          <attvalue for="modularity_class" value="1"></attvalue>
        </attvalues>
        <viz:size value="120"></viz:size>
        <viz:position x="-265" y="258" z="0.0"></viz:position>
        <viz:color r="156" g="109" b="10"></viz:color>
      </node>
      
      
      
      
    </nodes>
    <edges>
      <edge id="1" source="2" target="0" weight="8.0">
        <attvalues>1</attvalues>
        <viz:color r="0" g="238" b="0"></viz:color>
      </edge>
      
      <edge id="2" source="0" target="1" weight="3.0">
        <attvalues>1</attvalues>
        <viz:color r="0" g="238" b="0"></viz:color>
      </edge>
      
      
      <edge id="3" source="3" target="4" weight="8.0">
        <attvalues>0</attvalues>
       <viz:color r="0" g="238" b="0"></viz:color>
      </edge>
      
      <edge id="4" source="4" target="5" weight="3.0">
        <attvalues>1</attvalues>
        <viz:color r="0" g="238" b="0"></viz:color>
      </edge>
       
      
    </edges>
  </graph>
</gexf>
