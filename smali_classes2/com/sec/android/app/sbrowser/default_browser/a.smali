.class public final synthetic Lcom/sec/android/app/sbrowser/default_browser/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/default_browser/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/default_browser/a;->b:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/default_browser/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/a;->b:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;

    check-cast p1, Ljava/lang/Boolean;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetBySemRoleManager;->a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetByRoleManager;->a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
