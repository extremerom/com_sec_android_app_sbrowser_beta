.class public Lorg/chromium/ui/listmenu/ListSectionDividerProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

.field public static final LEFT_PADDING_DIMEN_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final RIGHT_PADDING_DIMEN_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v0}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v0, Lorg/chromium/ui/listmenu/ListSectionDividerProperties;->LEFT_PADDING_DIMEN_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v1, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v1, Lorg/chromium/ui/listmenu/ListSectionDividerProperties;->RIGHT_PADDING_DIMEN_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/chromium/ui/modelutil/PropertyKey;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lorg/chromium/ui/listmenu/ListSectionDividerProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    return-void
.end method
