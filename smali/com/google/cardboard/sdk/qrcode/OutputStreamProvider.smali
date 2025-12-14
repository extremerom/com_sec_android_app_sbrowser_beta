.class public Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$Provider;,
        Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$BufferedProvider;
    }
.end annotation


# static fields
.field private static provider:Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$BufferedProvider;

    invoke-direct {v0}, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$BufferedProvider;-><init>()V

    sput-object v0, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider;->provider:Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1

    sget-object v0, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider;->provider:Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$Provider;

    invoke-interface {v0, p0}, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$Provider;->get(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultProvider()Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$Provider;
    .locals 1

    new-instance v0, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$BufferedProvider;

    invoke-direct {v0}, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$BufferedProvider;-><init>()V

    return-object v0
.end method

.method public static setProvider(Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$Provider;)V
    .locals 0

    sput-object p0, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider;->provider:Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider$Provider;

    return-void
.end method
