.class public final Lorg/chromium/components/content_settings/ContentSettingsTypeSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mType:I
    .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/content_settings/ContentSettingsTypeSet;->mType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/chromium/components/content_settings/ContentSettingsTypeSet;

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/chromium/components/content_settings/ContentSettingsTypeSet;->mType:I

    check-cast p1, Lorg/chromium/components/content_settings/ContentSettingsTypeSet;

    iget p1, p1, Lorg/chromium/components/content_settings/ContentSettingsTypeSet;->mType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
