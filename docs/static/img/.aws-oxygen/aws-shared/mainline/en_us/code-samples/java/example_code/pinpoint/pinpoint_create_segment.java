/**
 * Copyright 2010-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * This file is licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License. A copy of
 * the License is located at
 *
 * http://aws.amazon.com/apache2.0/
 *
 * This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
*/


import com.amazonaws.services.pinpoint.AmazonPinpointClient;
import com.amazonaws.services.pinpoint.model.AttributeDimension;
import com.amazonaws.services.pinpoint.model.AttributeType;
import com.amazonaws.services.pinpoint.model.CreateSegmentRequest;
import com.amazonaws.services.pinpoint.model.CreateSegmentResult;
import com.amazonaws.services.pinpoint.model.RecencyDimension;
import com.amazonaws.services.pinpoint.model.SegmentBehaviors;
import com.amazonaws.services.pinpoint.model.SegmentDemographics;
import com.amazonaws.services.pinpoint.model.SegmentDimensions;
import com.amazonaws.services.pinpoint.model.SegmentLocation;
import com.amazonaws.services.pinpoint.model.SegmentResponse;
import com.amazonaws.services.pinpoint.model.WriteSegmentRequest;

import java.util.HashMap;
import java.util.Map;

public class PinpointSegmentSample {

    public SegmentResponse createSegment(AmazonPinpointClient client, String appId) {
        Map<String, AttributeDimension> segmentAttributes = new HashMap<>();
        segmentAttributes.put("Team", new AttributeDimension().withAttributeType(AttributeType.INCLUSIVE).withValues("Lakers"));

        SegmentBehaviors segmentBehaviors = new SegmentBehaviors();
        SegmentDemographics segmentDemographics = new SegmentDemographics();
        SegmentLocation segmentLocation = new SegmentLocation();

        RecencyDimension recencyDimension = new RecencyDimension();
        recencyDimension.withDuration("DAY_30").withRecencyType("ACTIVE");
        segmentBehaviors.setRecency(recencyDimension);

        SegmentDimensions dimensions = new SegmentDimensions()
                .withAttributes(segmentAttributes)
                .withBehavior(segmentBehaviors)
                .withDemographic(segmentDemographics)
                .withLocation(segmentLocation);


        WriteSegmentRequest writeSegmentRequest = new WriteSegmentRequest()
                .withName("MySegment").withDimensions(dimensions);

        CreateSegmentRequest createSegmentRequest = new CreateSegmentRequest()
                .withApplicationId(appId).withWriteSegmentRequest(writeSegmentRequest);

        CreateSegmentResult createSegmentResult = client.createSegment(createSegmentRequest);

        System.out.println("Segment ID: " + createSegmentResult.getSegmentResponse().getId());

        return createSegmentResult.getSegmentResponse();
    }

}

