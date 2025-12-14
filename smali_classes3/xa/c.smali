.class public final synthetic Lxa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;I)V
    .locals 0

    iput p4, p0, Lxa/c;->a:I

    iput-object p1, p0, Lxa/c;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iput p2, p0, Lxa/c;->c:I

    iput-object p3, p0, Lxa/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lxa/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lxa/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lxa/c;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iget p0, p0, Lxa/c;->c:I

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->b(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lxa/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lxa/c;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iget p0, p0, Lxa/c;->c:I

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
