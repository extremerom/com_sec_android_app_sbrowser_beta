.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->a(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->f(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Z)V

    return-void
.end method
