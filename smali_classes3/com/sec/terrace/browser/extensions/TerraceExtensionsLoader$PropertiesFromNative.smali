.class public Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertiesFromNative"
.end annotation


# instance fields
.field private mExtDescription:Ljava/lang/String;

.field private mExtId:Ljava/lang/String;

.field private mExtName:Ljava/lang/String;

.field private mExtVersion:Ljava/lang/String;

.field private mIsThruSixPkg:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mExtName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mExtId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mExtDescription:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mIsThruSixPkg:Z

    iput-object p5, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mExtVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mExtDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getExtId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mExtId:Ljava/lang/String;

    return-object p0
.end method

.method public getExtName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mExtName:Ljava/lang/String;

    return-object p0
.end method

.method public getExtVer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mExtVersion:Ljava/lang/String;

    return-object p0
.end method

.method public isInstalledThruSixPkg()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$PropertiesFromNative;->mIsThruSixPkg:Z

    return p0
.end method
