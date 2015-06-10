#!/bin/bash
# example running script for neighborhood model

# make buffer, transform text format to binary format
../../tools/make_feature_buffer ua.base.example ua.base.buffer
../../tools/make_feature_buffer ua.test.example ua.test.buffer

# training for 40 rounds
../../svd_feature neighborhoodModel.conf num_round=40 
# write out prediction from 0040.model
../../svd_feature_infer neighborhoodModel.conf pred=40 
