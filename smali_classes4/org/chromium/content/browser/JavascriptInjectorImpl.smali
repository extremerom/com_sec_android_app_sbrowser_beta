.class public Lorg/chromium/content/browser/JavascriptInjectorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/JavascriptInjector;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/JavascriptInjectorImpl$UserDataFactoryLazyHolder;,
        Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mInjectedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNativePtr:J

.field private final mRetainedObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/build/annotations/DoNotInline;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mRetainedObjects:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mInjectedObjects:Ljava/util/Map;

    invoke-static {}, Lorg/chromium/content/browser/JavascriptInjectorImplJni;->get()Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;->init(Lorg/chromium/content/browser/JavascriptInjectorImpl;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mNativePtr:J

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/JavascriptInjector;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/JavascriptInjectorImpl;

    invoke-static {}, Lorg/chromium/content/browser/JavascriptInjectorImpl$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;

    return-object p0
.end method

.method private onDestroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mNativePtr:J

    return-void
.end method


# virtual methods
.method public addPossiblyUnsafeInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mInjectedObjects:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/chromium/content/browser/JavascriptInjectorImplJni;->get()Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mNativePtr:J

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v2 .. v8}, Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;->addInterface(JLorg/chromium/content/browser/JavascriptInjectorImpl;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    return-void
.end method

.method public removeInterface(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mInjectedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/JavascriptInjectorImplJni;->get()Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/JavascriptInjectorImpl;->mNativePtr:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/JavascriptInjectorImpl$Natives;->removeInterface(JLorg/chromium/content/browser/JavascriptInjectorImpl;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
