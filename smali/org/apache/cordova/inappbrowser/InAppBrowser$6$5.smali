.class Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;
.super Lorg/apache/cordova/inappbrowser/InAppChromeClient;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .param p1, "this$1"    # Lorg/apache/cordova/inappbrowser/InAppBrowser$6;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 732
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    invoke-direct {p0, p2}, Lorg/apache/cordova/inappbrowser/InAppChromeClient;-><init>(Lorg/apache/cordova/CordovaWebView;)V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 736
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const-string v1, "InAppBrowser"

    const-string v2, "File Chooser 5.0+"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    iget-object v1, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;
    invoke-static {v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/ValueCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    iget-object v1, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;
    invoke-static {v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/ValueCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 741
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    iget-object v1, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    # setter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;
    invoke-static {v1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$702(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 744
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v0, "content":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    iget-object v1, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v1, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    iget-object v2, v2, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    const-string v3, "Select File"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 750
    const/4 v1, 0x1

    return v1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 5
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 764
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v1, "InAppBrowser"

    const-string v2, "File Chooser 3.0+"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    iget-object v1, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    # setter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;
    invoke-static {v1, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$802(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 766
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v0, "content":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    iget-object v1, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v1, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->this$1:Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    iget-object v2, v2, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    const-string v3, "Select File"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 771
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v0, "InAppBrowser"

    const-string v1, "File Chooser 4.1+"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 759
    return-void
.end method
