.class public final synthetic Lcom/sec/terrace/browser/webapps/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/base/Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/Callback;I)V
    .locals 0

    iput p2, p0, Lcom/sec/terrace/browser/webapps/f;->a:I

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/f;->b:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final useApi(Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 1

    iget v0, p0, Lcom/sec/terrace/browser/webapps/f;->a:I

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/f;->b:Lorg/chromium/base/Callback;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->e(Lorg/chromium/base/Callback;Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->a(Lorg/chromium/base/Callback;Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
