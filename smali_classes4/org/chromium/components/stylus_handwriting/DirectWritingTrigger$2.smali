.class Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->bindDirectWritingService(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;


# direct methods
.method public constructor <init>(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$2;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceCallback()Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$2;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->d(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$2;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->d(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    move-result-object p0

    return-object p0
.end method

.method public updateConfiguration(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$2;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->e(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->update(Landroid/os/Bundle;)V

    return-void
.end method
