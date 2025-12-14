.class public abstract Lorg/chromium/components/content_settings/ContentSettingsObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/content_settings/ContentSettingsObserver$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private onContentSettingChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p3    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/content_settings/ContentSettingsTypeSet;

    invoke-direct {v0, p3}, Lorg/chromium/components/content_settings/ContentSettingsTypeSet;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/components/content_settings/ContentSettingsObserver;->onContentSettingChanged(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/components/content_settings/ContentSettingsTypeSet;)V

    return-void
.end method


# virtual methods
.method public abstract onContentSettingChanged(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/components/content_settings/ContentSettingsTypeSet;)V
.end method
