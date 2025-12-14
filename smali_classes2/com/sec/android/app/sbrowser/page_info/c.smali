.class public final synthetic Lcom/sec/android/app/sbrowser/page_info/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/page_info/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/c;->b:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/page_info/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/c;->b:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->a(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->e(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
