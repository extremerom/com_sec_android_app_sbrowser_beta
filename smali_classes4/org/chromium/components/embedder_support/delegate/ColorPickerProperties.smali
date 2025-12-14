.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

.field public static final CHOSEN_COLOR:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final CHOSEN_SUGGESTION_INDEX:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final CUSTOM_COLOR_PICKED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DIALOG_DISMISSED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final IS_ADVANCED_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final MAKE_CHOICE_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SUGGESTIONS_ADAPTER:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Lorg/chromium/ui/modelutil/ModelListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUGGESTIONS_NUM_COLUMNS:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

.field public static final VIEW_SWITCHED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v0}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_COLOR:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v1, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_SUGGESTION_INDEX:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v2, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-direct {v2}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;-><init>()V

    sput-object v2, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->SUGGESTIONS_NUM_COLUMNS:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    new-instance v3, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v3}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v3, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->SUGGESTIONS_ADAPTER:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v4, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct {v4}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v4, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->IS_ADVANCED_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v5, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v5}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v5, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CUSTOM_COLOR_PICKED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v6, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v6}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v6, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->VIEW_SWITCHED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v7, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v7}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v7, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->MAKE_CHOICE_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v8, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v8}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v8, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->DIALOG_DISMISSED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    const/16 v9, 0x9

    new-array v9, v9, [Lorg/chromium/ui/modelutil/PropertyKey;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    return-void
.end method
