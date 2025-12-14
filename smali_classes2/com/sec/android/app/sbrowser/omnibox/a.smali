.class public final synthetic Lcom/sec/android/app/sbrowser/omnibox/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/omnibox/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/a;->b:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/a;->b:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/a;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;->d(Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/a;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/a;->b:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;->c(Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
