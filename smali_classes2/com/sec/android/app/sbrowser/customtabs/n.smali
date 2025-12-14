.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

.field public final synthetic c:Z

.field public final synthetic d:LH/y;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/os/Bundle;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;I)V
    .locals 0

    iput p8, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->b:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->c:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->d:LH/y;

    iput p4, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->e:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->g:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->h:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget v4, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->e:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->b:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->c:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->d:LH/y;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->g:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->h:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->g(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    return-void

    :pswitch_0
    iget v11, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->e:I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->b:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->c:Z

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->d:LH/y;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->g:Landroid/os/Bundle;

    iget-object v14, p0, Lcom/sec/android/app/sbrowser/customtabs/n;->h:Ljava/util/List;

    invoke-static/range {v8 .. v14}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
