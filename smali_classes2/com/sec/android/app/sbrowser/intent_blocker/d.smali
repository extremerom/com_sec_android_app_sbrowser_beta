.class public final synthetic Lcom/sec/android/app/sbrowser/intent_blocker/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# instance fields
.field public final synthetic a:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/d;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/d;->a:Landroid/content/SharedPreferences;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;->a(Landroid/content/SharedPreferences;[Ljava/lang/String;[I)V

    return-void
.end method
