.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties$ListItemType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

.field public static final COLOR:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

.field public static final INDEX:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

.field public static final IS_SELECTED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final LABEL:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ONCLICK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-direct {v0}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;-><init>()V

    sput-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->INDEX:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    new-instance v1, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-direct {v1}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;-><init>()V

    sput-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->COLOR:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    new-instance v2, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v2}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v2, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->LABEL:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v3, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct {v3}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v3, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->IS_SELECTED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v4, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v4}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v4, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->ONCLICK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    const/4 v5, 0x5

    new-array v5, v5, [Lorg/chromium/ui/modelutil/PropertyKey;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    return-void
.end method
