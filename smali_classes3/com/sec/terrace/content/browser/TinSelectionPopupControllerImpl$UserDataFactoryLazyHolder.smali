.class final Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$UserDataFactoryLazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserDataFactoryLazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/content_public/browser/WebContents$UserDataFactory<",
            "Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    return-void
.end method
