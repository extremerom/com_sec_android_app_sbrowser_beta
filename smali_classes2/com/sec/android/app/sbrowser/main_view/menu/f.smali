.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->o(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->i(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->q(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/f;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->k(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
