.class public final synthetic Lcom/sec/android/app/sbrowser/settings/debug/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/c;->a:Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/c;->a:Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
