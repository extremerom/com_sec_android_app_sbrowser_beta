.class public Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mPattern:Ljava/lang/String;

.field private final mSource:I
    .annotation build Lorg/chromium/components/content_settings/ProviderType$EnumType;
    .end annotation
.end field

.field private mTerraceContentSetting:I

.field private final mTerraceContentSettingsType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p4    # I
        .annotation build Lorg/chromium/components/content_settings/ProviderType$EnumType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;->mTerraceContentSettingsType:I

    iput-object p2, p0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;->mPattern:Ljava/lang/String;

    iput p3, p0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;->mTerraceContentSetting:I

    iput p4, p0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;->mSource:I

    return-void
.end method

.method public static create(ILjava/lang/String;II)Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;
    .locals 1
    .param p3    # I
        .annotation build Lorg/chromium/components/content_settings/ProviderType$EnumType;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public setContentSetting(I)V
    .locals 3

    iput p1, p0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;->mTerraceContentSetting:I

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v1

    iget v2, p0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;->mTerraceContentSettingsType:I

    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;->mPattern:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setContentSettingForPattern(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;ILjava/lang/String;I)V

    return-void
.end method
