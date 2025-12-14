.class final Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$UserDataFactoryLazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserDataFactoryLazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/content_public/browser/WebContents$UserDataFactory<",
            "Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;
    .locals 1

    sget-object v0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    return-object v0
.end method
