.class public final synthetic Lcom/sec/android/app/sbrowser/page_info/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/page_info/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/b;->b:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/page_info/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/page_info/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/b;->b:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/b;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->f(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/b;->b:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/b;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->d(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/b;->b:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/b;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->g(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
