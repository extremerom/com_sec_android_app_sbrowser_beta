.class public Lcom/sec/terrace/browser/password_manager/TerraceCredential;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private final mDisplayName:Ljava/lang/String;

.field private final mFederation:Ljava/lang/String;

.field private mIconUrl:Ljava/lang/String;

.field private final mIndex:I

.field private final mOriginUrl:Ljava/lang/String;

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mUsername:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mDisplayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mOriginUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mFederation:Ljava/lang/String;

    iput p5, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mIndex:I

    iput-object p6, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method private static createCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/sec/terrace/browser/password_manager/TerraceCredential;
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v7, Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/password_manager/TerraceCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v7
.end method

.method private static createCredentialArray(I)[Lcom/sec/terrace/browser/password_manager/TerraceCredential;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-array p0, p0, [Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    return-object p0
.end method


# virtual methods
.method public getAvatar()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mAvatar:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getFederation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mFederation:Ljava/lang/String;

    return-object p0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mIndex:I

    return p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method public setAvatar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->mAvatar:Landroid/graphics/drawable/Drawable;

    return-void
.end method
