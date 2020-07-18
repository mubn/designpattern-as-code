// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline/v1beta1

package v1beta1

import (
	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	duckv1beta1 "knative.dev/pkg/apis/duck/v1beta1"
)

// ConditionCheck represents a single evaluation of a Condition step.
#ConditionCheck: #TaskRun

// ConditionCheckStatus defines the observed state of ConditionCheck
#ConditionCheckStatus: {
	duckv1beta1.#Status

	#ConditionCheckStatusFields
}

// ConditionCheckStatusFields holds the fields of ConfigurationCheck's status.
// This is defined separately and inlined so that other types can readily
// consume these fields via duck typing.
#ConditionCheckStatusFields: {
	// PodName is the name of the pod responsible for executing this condition check.
	podName: string @go(PodName)

	// StartTime is the time the check is actually started.
	// +optional
	startTime?: null | metav1.#Time @go(StartTime,*metav1.Time)

	// CompletionTime is the time the check pod completed.
	// +optional
	completionTime?: null | metav1.#Time @go(CompletionTime,*metav1.Time)

	// Check describes the state of the check container.
	// +optional
	check?: corev1.#ContainerState @go(Check)
}
