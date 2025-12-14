.class public final synthetic Lcom/sec/android/app/sbrowser/webapp/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/d;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/d;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/d;->b:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->b(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void
.end method
