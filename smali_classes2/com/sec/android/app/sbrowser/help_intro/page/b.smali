.class public final synthetic Lcom/sec/android/app/sbrowser/help_intro/page/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->a(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;->a(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
