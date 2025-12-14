.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/B;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/B;->b:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/B;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/B;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/B;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/B;->b:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/B;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/B;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
