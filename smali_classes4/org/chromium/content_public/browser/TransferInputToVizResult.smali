.class public interface abstract annotation Lorg/chromium/content_public/browser/TransferInputToVizResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final BROWSER_TOKEN_CHANGED:I = 0x9

.field public static final CAN_TRIGGER_BACK_GESTURE:I = 0x5

.field public static final DOWN_TIME_AFTER_EVENT_TIME:I = 0xb

.field public static final IME_IS_ACTIVE:I = 0x6

.field public static final INPUT_TRANSFER_HANDLER_NOT_FOUND_IN_MAP:I = 0x1

.field public static final MAX_VALUE:I = 0xc

.field public static final MULTIPLE_BROWSER_WINDOWS_OPEN:I = 0xa

.field public static final NON_FINGER_TOOL_TYPE:I = 0x2

.field public static final REQUESTED_BY_EMBEDDER:I = 0x7

.field public static final SELECTION_HANDLES_ACTIVE:I = 0x4

.field public static final SEQUENCE_TRANSFERRED_BACK_FROM_VIZ:I = 0xc

.field public static final SUCCESSFULLY_TRANSFERRED:I = 0x0

.field public static final SYSTEM_SERVER_DID_NOT_TRANSFER:I = 0x8

.field public static final VIZ_INITIALIZATION_NOT_COMPLETE:I = 0x3
