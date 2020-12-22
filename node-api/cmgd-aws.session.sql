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
select *
from sample;