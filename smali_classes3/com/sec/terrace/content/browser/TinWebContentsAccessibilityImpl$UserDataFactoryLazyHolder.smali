.class public final Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$UserDataFactoryLazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserDataFactoryLazyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/content_public/browser/WebContents$UserDataFactory<",
            "Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$Factory;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    return-void
.end method
