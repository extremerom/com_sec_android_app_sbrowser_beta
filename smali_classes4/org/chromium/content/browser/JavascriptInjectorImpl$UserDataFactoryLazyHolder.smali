.class final Lorg/chromium/content/browser/JavascriptInjectorImpl$UserDataFactoryLazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/JavascriptInjectorImpl;
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
            "Lorg/chromium/content/browser/JavascriptInjectorImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/h;-><init>(I)V

    sput-object v0, Lorg/chromium/content/browser/JavascriptInjectorImpl$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/JavascriptInjectorImpl$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    return-object v0
.end method
