.class public Lorg/chromium/components/permissions/PermissionDialogCustomViewProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

.field public static final BOLDED_RANGES:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Ljava/util/List<",
            "Le1/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ICON:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_TINT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_TEXT:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v0}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v0, Lorg/chromium/components/permissions/PermissionDialogCustomViewProperties;->ICON:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v1, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v1, Lorg/chromium/components/permissions/PermissionDialogCustomViewProperties;->ICON_TINT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v2, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v2}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v2, Lorg/chromium/components/permissions/PermissionDialogCustomViewProperties;->MESSAGE_TEXT:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v3, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v3}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v3, Lorg/chromium/components/permissions/PermissionDialogCustomViewProperties;->BOLDED_RANGES:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/chromium/ui/modelutil/PropertyKey;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lorg/chromium/components/permissions/PermissionDialogCustomViewProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    return-void
.end method
