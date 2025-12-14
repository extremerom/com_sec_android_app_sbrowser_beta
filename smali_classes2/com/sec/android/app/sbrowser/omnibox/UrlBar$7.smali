.class Lcom/sec/android/app/sbrowser/omnibox/UrlBar$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$7;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$7;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method
