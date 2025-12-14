.class public interface abstract Lcom/osp/app/signin/sasdk/http/HttpRequestClient$EntryPointResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/http/HttpRequestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntryPointResponseListener"
.end annotation


# virtual methods
.method public abstract onRequestFail()V
.end method

.method public abstract onRequestSuccess(Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;)V
.end method
