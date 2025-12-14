.class Lorg/chromium/content/browser/selection/SmartSelectionProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/WindowEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/selection/SmartSelectionProvider;-><init>(Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/selection/SmartSelectionProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/selection/SmartSelectionProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider$1;->this$0:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider$1;->this$0:Lorg/chromium/content/browser/selection/SmartSelectionProvider;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->b(Lorg/chromium/content/browser/selection/SmartSelectionProvider;Lorg/chromium/ui/base/WindowAndroid;)V

    return-void
.end method
