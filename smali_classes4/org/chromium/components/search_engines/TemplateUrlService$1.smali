.class Lorg/chromium/components/search_engines/TemplateUrlService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/search_engines/TemplateUrlService$LoadListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/components/search_engines/TemplateUrlService;

.field final synthetic val$action:Ljava/lang/Runnable;


# virtual methods
.method public onTemplateUrlServiceLoaded()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService$1;->this$0:Lorg/chromium/components/search_engines/TemplateUrlService;

    invoke-virtual {v0, p0}, Lorg/chromium/components/search_engines/TemplateUrlService;->unregisterLoadListener(Lorg/chromium/components/search_engines/TemplateUrlService$LoadListener;)V

    iget-object p0, p0, Lorg/chromium/components/search_engines/TemplateUrlService$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
