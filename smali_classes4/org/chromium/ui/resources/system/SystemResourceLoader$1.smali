.class Lorg/chromium/ui/resources/system/SystemResourceLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/resources/system/SystemResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$minScreenSideLengthPx:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lorg/chromium/ui/resources/system/SystemResourceLoader$1;->val$minScreenSideLengthPx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lorg/chromium/ui/resources/Resource;
    .locals 0

    iget p0, p0, Lorg/chromium/ui/resources/system/SystemResourceLoader$1;->val$minScreenSideLengthPx:I

    invoke-static {p0, p1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->d(II)Lorg/chromium/ui/resources/Resource;

    move-result-object p0

    return-object p0
.end method
