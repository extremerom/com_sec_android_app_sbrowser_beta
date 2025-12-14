.class public final synthetic Lcom/sec/android/app/sbrowser/infobars/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/d;->a:Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/d;->a:Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->c(Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;[Ljava/lang/String;[I)V

    return-void
.end method
