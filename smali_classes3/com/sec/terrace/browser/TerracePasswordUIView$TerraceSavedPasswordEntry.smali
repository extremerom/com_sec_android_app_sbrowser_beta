.class public final Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/TerracePasswordUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceSavedPasswordEntry"
.end annotation


# instance fields
.field private mIsBiometric:Z

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPasswordElement:Ljava/lang/String;

.field private mSignonRealm:Ljava/lang/String;

.field private mSignonUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUsernameElement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mUrl:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mPassword:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mUsernameElement:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mPasswordElement:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mSignonUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mSignonRealm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mUsernameElement:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mPasswordElement:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mSignonUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mSignonRealm:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mIsBiometric:Z

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public getPasswordElement()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mPasswordElement:Ljava/lang/String;

    return-object p0
.end method

.method public getSignonRealm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mSignonRealm:Ljava/lang/String;

    return-object p0
.end method

.method public getSignonUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mSignonUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getUsernameElement()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mUsernameElement:Ljava/lang/String;

    return-object p0
.end method

.method public isBiometric()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->mIsBiometric:Z

    return p0
.end method
