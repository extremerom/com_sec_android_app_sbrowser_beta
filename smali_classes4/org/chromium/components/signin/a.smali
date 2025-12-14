.class public final synthetic Lorg/chromium/components/signin/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/chromium/components/signin/a;->a:I

    iput-object p2, p0, Lorg/chromium/components/signin/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/chromium/components/signin/a;->a:I

    iget-object p0, p0, Lorg/chromium/components/signin/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->c(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;

    check-cast p1, Lorg/chromium/components/signin/base/AccountCapabilities;

    invoke-static {p0, p1}, Lorg/chromium/components/signin/AccountCapabilitiesFetcher;->a(Lorg/chromium/components/signin/AccountCapabilitiesFetcher;Lorg/chromium/components/signin/base/AccountCapabilities;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
