.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/J;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/J;->a:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->a(Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void
.end method
