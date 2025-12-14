.class public final synthetic Lcom/sec/terrace/browser/webapps/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sec/terrace/browser/webapps/e;->b:I

    return-void
.end method


# virtual methods
.method public final useApi(Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/e;->a:Ljava/lang/String;

    iget p0, p0, Lcom/sec/terrace/browser/webapps/e;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->b(Ljava/lang/String;ILorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V

    return-void
.end method
