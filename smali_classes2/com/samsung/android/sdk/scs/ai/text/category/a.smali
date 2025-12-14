.class public final synthetic Lcom/samsung/android/sdk/scs/ai/text/category/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->a:I

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->d:Ljava/io/Serializable;

    iput-object p5, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->b:Ljava/lang/Object;

    check-cast v0, LH/y;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->d:Ljava/io/Serializable;

    check-cast v2, [I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->e(LH/y;Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->d:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->c:Ljava/lang/Object;

    check-cast p0, LH/y;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->f(Ljava/util/ArrayList;LH/y;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->d:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;->c(Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$RequestType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
