CREATE TABLE taxonomy (
  taxonomy_id integer PRIMARY KEY,
  taxonomy_name VARCHAR(100) UNIQUE NOT NULL,
  taxonomy_parent_id integer NOT NULL
);
CREATE TABLE samples (
  _sample_id serial PRIMARY KEY,
  sample_id VARCHAR(45) UNIQUE NOT NULL,
  age_category VARCHAR(25) NOT NULL,
  born_method VARCHAR(25) NOT NULL,
  NCBI_accession VARCHAR(30) NOT NULL
);
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_017G1',
    'newborn',
    'vaginal',
    'SRR3726381'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_016G1',
    'newborn',
    'vaginal',
    'SRR3726380'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_015G1',
    'newborn',
    'vaginal',
    'SRR3726379'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_014G1',
    'newborn',
    'vaginal',
    'SRR3726378'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_013G1',
    'newborn',
    'vaginal',
    'SRR3726377'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_028Y1',
    'newborn',
    'vaginal',
    'SRR3726376'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_028G1',
    'newborn',
    'vaginal',
    'SRR3726375'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_027G1',
    'newborn',
    'vaginal',
    'SRR3726374'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_026G1',
    'newborn',
    'vaginal',
    'SRR3726373'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_025G1',
    'newborn',
    'vaginal',
    'SRR3726372'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_012G1',
    'newborn',
    'vaginal',
    'SRR3726371'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_024G1',
    'newborn',
    'vaginal',
    'SRR3726370'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_023G1',
    'newborn',
    'vaginal',
    'SRR3726369'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_022W1',
    'newborn',
    'vaginal',
    'SRR3726368'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_022G1',
    'newborn',
    'vaginal',
    'SRR3726367'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_021G1',
    'newborn',
    'vaginal',
    'SRR3726366'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_020G1',
    'newborn',
    'vaginal',
    'SRR3726365'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_019G1',
    'newborn',
    'vaginal',
    'SRR3726364'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_018G1',
    'newborn',
    'vaginal',
    'SRR3726363'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_017G1',
    'newborn',
    'vaginal',
    'SRR3726362'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_016G1',
    'newborn',
    'vaginal',
    'SRR3726361'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_011G1',
    'newborn',
    'vaginal',
    'SRR3726360'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_015G1',
    'newborn',
    'vaginal',
    'SRR3726359'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_014Y1',
    'newborn',
    'vaginal',
    'SRR3726358'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_014G1',
    'newborn',
    'vaginal',
    'SRR3726357'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_012W1',
    'newborn',
    'vaginal',
    'SRR3726356'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_011G1',
    'newborn',
    'vaginal',
    'SRR3726355'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_008G1',
    'newborn',
    'vaginal',
    'SRR3726354'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_007G1',
    'newborn',
    'vaginal',
    'SRR3726353'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_006G1',
    'newborn',
    'vaginal',
    'SRR3726352'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_005_005G1',
    'newborn',
    'vaginal',
    'SRR3726351'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_027G1',
    'newborn',
    'vaginal',
    'SRR3726350'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_010G1',
    'newborn',
    'vaginal',
    'SRR3726349'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_026G1',
    'newborn',
    'vaginal',
    'SRR3726348'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_025G1',
    'newborn',
    'vaginal',
    'SRR3726347'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_024G1',
    'newborn',
    'vaginal',
    'SRR3726346'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_023Y1',
    'newborn',
    'vaginal',
    'SRR3726345'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_023W1',
    'newborn',
    'vaginal',
    'SRR3726344'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_023G1',
    'newborn',
    'vaginal',
    'SRR3726343'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_021G1',
    'newborn',
    'vaginal',
    'SRR3726342'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_020G1',
    'newborn',
    'vaginal',
    'SRR3726339'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_019G1',
    'newborn',
    'vaginal',
    'SRR3726338'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_018G1',
    'newborn',
    'vaginal',
    'SRR3726337'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_006Y1',
    'newborn',
    'vaginal',
    'SRR3726336'
  );
INSERT INTO samples (
    sample_id,
    age_category,
    born_method,
    NCBI_accession
  )
VALUES (
    'S2_001_006W1',
    'newborn',
    'vaginal',
    'SRR3726335'
  );
CREATE TABLE sample_taxonomy (
  sample_id integer REFERENCES samples (_sample_id),
  taxonomy_id integer REFERENCES taxonomy (taxonomy_id),
  abundance NUMERIC (8, 5),
  PRIMARY KEY (sample_id, taxonomy_id)
);
CREATE OR REPLACE FUNCTION get_sample_id(sampleId VARCHAR(45)) RETURNS integer AS $$ BEGIN RETURN (
    SELECT _sample_id
    from samples
    WHERE sample_id = sampleId
  );
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION get_taxonomy_id(taxonomyName VARCHAR(80)) RETURNS integer AS $$ BEGIN RETURN (
    SELECT taxonomy_id
    from taxonomy
    WHERE taxonomy_name = taxonomyName
  );
END;
$$ LANGUAGE plpgsql;
SELECT get_sample_id('S2_001_006W1');
SELECT get_taxonomy_id('s__Pseudolabrys_taiwanensis');
CREATE OR REPLACE FUNCTION get_sample_id(_sample_ID VARCHAR(45)) RETURNS integer AS $$
SELECT id
from samples
WHERE sample_id = _sample_ID;
$$ LANGUAGE sql;
SELECT *
FROM samples
WHERE sample_ID = "S2_001_006W1"
SELECT get_sample_id("S2_001_006W1")
SELECT s.sample_id,
  s.ncbi_accession,
  s.age_category,
  st.abundance,
  s.born_method
from samples AS s
  INNER JOIN sample_taxonomy AS st ON s._sample_id = st.sample_id
  INNER JOIN taxonomy USING (taxonomy_id)
WHERE s.age_category IN ();
CREATE TABLE sample (
  id serial PRIMARY KEY,
  sample_id VARCHAR UNIQUE NOT NULL,
  created_at timestamp NOT NULL DEFAULT NOW()
);
CREATE TABLE variable (
  id serial PRIMARY KEY,
  name VARCHAR UNIQUE NOT NULL,
  type CHAR(1) NOT NULL,
  created_at timestamp NOT NULL DEFAULT NOW()
);
CREATE TABLE sample_variable (
  sample_id integer REFERENCES sample (id),
  variable_id integer REFERENCES variable (id),
  num_val NUMERIC,
  str_val VARCHAR,
  bln_val boolean,
  created_at timestamp NOT NULL DEFAULT NOW(),
  UNIQUE (
    sample_id,
    variable_id,
    num_val,
    str_val,
    bln_val
  )
);
CREATE OR REPLACE FUNCTION get_sample_id(sampleId VARCHAR) RETURNS integer AS $$ BEGIN RETURN (
    SELECT id
    from sample
    WHERE sample_id = sampleId
  );
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION get_variable_id(varId VARCHAR) RETURNS integer AS $$ BEGIN RETURN (
    SELECT id
    from variable
    WHERE name = varId
  );
END;
$$ LANGUAGE plpgsql;
SELECT s.sample_id,
  v.name,
  sv.num_val,
  sv.str_val,
  sv.bln_val,
  sv.created_at
from sample AS s
  INNER JOIN sample_variable AS sv ON s.id = sv.sample_id
  INNER JOIN variable AS v ON v.id = sv.variable_id
WHERE s.sample_id = 'M1.1.SA';
SELECT s.sample_id,
  v.name,
  sv.num_val,
  sv.str_val,
  sv.bln_val
from sample AS s
  INNER JOIN sample_variable AS sv ON s.id = sv.sample_id
  INNER JOIN variable AS v ON v.id = sv.variable_id
WHERE v.name = 'number_bases'
  AND sv.num_val < 3824543561;
? ? ?
SELECT *
FROM hops a
  inner join (
    SELECT itemid,
      MAX(timestamp)
    FROM hops
    group by itemid
  ) b ON a.itemid = b.itemid
where a.STATE_ID = 2 ? ? ?
SELECT s.sample_id,
  v.name,
  sv.num_val,
  sv.str_val,
  sv.bln_val sv.created_at
from sample AS s
  INNER JOIN sample_variable AS sv ON s.id = sv.sample_id
  INNER JOIN variable AS v ON v.id = sv.variable_id
WHERE s.sample_id = 'M1.1.SA';
SELECT sample_id,
  variable_id,
  num_val,
  bln_val,
  str_val,
  MAX(created_at)
FROM sample_variable
group by sample_id,
  variable_id,
  num_val,
  bln_val,
  str_val;