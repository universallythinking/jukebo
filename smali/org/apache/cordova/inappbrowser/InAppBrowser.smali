.class public Lorg/apache/cordova/inappbrowser/InAppBrowser;
.super Lorg/apache/cordova/CordovaPlugin;
.source "InAppBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;
    }
.end annotation


# static fields
.field private static final CLEAR_ALL_CACHE:Ljava/lang/String; = "clearcache"

.field private static final CLEAR_SESSION_CACHE:Ljava/lang/String; = "clearsessioncache"

.field private static final DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

.field private static final EXIT_EVENT:Ljava/lang/String; = "exit"

.field private static final FILECHOOSER_REQUESTCODE:I = 0x1

.field private static final FILECHOOSER_REQUESTCODE_LOLLIPOP:I = 0x2

.field private static final HARDWARE_BACK_BUTTON:Ljava/lang/String; = "hardwareback"

.field private static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final LOAD_ERROR_EVENT:Ljava/lang/String; = "loaderror"

.field private static final LOAD_START_EVENT:Ljava/lang/String; = "loadstart"

.field private static final LOAD_STOP_EVENT:Ljava/lang/String; = "loadstop"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"

.field private static final MEDIA_PLAYBACK_REQUIRES_USER_ACTION:Ljava/lang/String; = "mediaPlaybackRequiresUserAction"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final SELF:Ljava/lang/String; = "_self"

.field private static final SHOULD_PAUSE:Ljava/lang/String; = "shouldPauseOnSuspend"

.field private static final SYSTEM:Ljava/lang/String; = "_system"

.field private static final USER_WIDE_VIEW_PORT:Ljava/lang/String; = "useWideViewPort"

.field private static final ZOOM:Ljava/lang/String; = "zoom"


# instance fields
.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private clearAllCache:Z

.field private clearSessionCache:Z

.field private dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

.field private edittext:Landroid/widget/EditText;

.field private hadwareBackButton:Z

.field private inAppWebView:Landroid/webkit/WebView;

.field private mUploadCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadCallbackLollipop:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlaybackRequiresUserGesture:Z

.field private openWindowHidden:Z

.field private shouldPauseInAppBrowser:Z

.field private showLocationBar:Z

.field private showZoomControls:Z

.field private useWideViewPort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 99
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 100
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    .line 101
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 102
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    .line 103
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    .line 104
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    .line 105
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    .line 106
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    .line 107
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/apache/cordova/PluginResult$Status;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$702(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$802(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    return v0
.end method

.method private getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 0

    .prologue
    .line 517
    return-object p0
.end method

.method private getShowLocationBar()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    return v0
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 487
    :cond_0
    return-void
.end method

.method private injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "jsWrapper"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 334
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    if-eqz v5, :cond_1

    .line 336
    if-eqz p2, :cond_0

    .line 337
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 338
    .local v1, "jsonEsc":Lorg/json/JSONArray;
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 339
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "jsonRepr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "jsonSourceString":Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .end local v1    # "jsonEsc":Lorg/json/JSONArray;
    .end local v2    # "jsonRepr":Ljava/lang/String;
    .end local v3    # "jsonSourceString":Ljava/lang/String;
    .local v4, "scriptToInject":Ljava/lang/String;
    :goto_0
    move-object v0, v4

    .line 346
    .local v0, "finalScriptToInject":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;

    invoke-direct {v6, p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    .end local v0    # "finalScriptToInject":Ljava/lang/String;
    .end local v4    # "scriptToInject":Ljava/lang/String;
    :goto_1
    return-void

    .line 343
    :cond_0
    move-object v4, p1

    .restart local v4    # "scriptToInject":Ljava/lang/String;
    goto :goto_0

    .line 359
    .end local v4    # "scriptToInject":Ljava/lang/String;
    :cond_1
    const-string v5, "InAppBrowser"

    const-string v6, "Can\'t inject code into the system browser"

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 496
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 498
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 503
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 504
    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseFeature(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "optString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    const/4 v2, 0x0

    .line 384
    :cond_0
    return-object v2

    .line 373
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v0, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .local v0, "features":Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v3, "option":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 379
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 381
    .local v4, "value":Ljava/lang/Boolean;
    :goto_1
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_3
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 862
    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    .line 863
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z
    .param p3, "status"    # Lorg/apache/cordova/PluginResult$Status;

    .prologue
    .line 872
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 873
    new-instance v0, Lorg/apache/cordova/PluginResult;

    invoke-direct {v0, p3, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 874
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 875
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 876
    if-nez p2, :cond_0

    .line 877
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 880
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public closeDialog()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 122
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    iput-object p3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 124
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "t":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    const-string v8, "_self"

    .line 129
    :cond_1
    move-object v2, v8

    .line 130
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->parseFeature(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 132
    .local v4, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v0, "InAppBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "t":Ljava/lang/String;
    :goto_0
    move v0, v9

    .line 278
    :cond_2
    return v0

    .line 216
    :cond_3
    const-string v1, "close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    goto :goto_0

    .line 219
    :cond_4
    const-string v1, "injectScriptCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 220
    const/4 v6, 0x0

    .line 221
    .local v6, "jsWrapper":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    const-string v1, "(function(){prompt(JSON.stringify([eval(%%s)]), \'gap-iab://%s\')})()"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 224
    :cond_5
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_6
    const-string v1, "injectScriptFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 228
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 229
    const-string v1, "(function(d) { var c = d.createElement(\'script\'); c.src = %%s; c.onload = function() { prompt(\'\', \'gap-iab://%s\'); }; d.body.appendChild(c); })(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_7
    const-string v6, "(function(d) { var c = d.createElement(\'script\'); c.src = %s; d.body.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_1

    .line 235
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_8
    const-string v1, "injectStyleCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 237
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 238
    const-string v1, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %%s; d.body.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 242
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_9
    const-string v6, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %s; d.body.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_2

    .line 244
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_a
    const-string v1, "injectStyleFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 246
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 247
    const-string v1, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %%s; d.head.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 251
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_3
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_b
    const-string v6, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %s; d.head.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_3

    .line 253
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_c
    const-string v1, "show"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 254
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    new-instance v7, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v7, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 261
    .local v7, "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v7, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 262
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v7}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    .line 264
    .end local v7    # "pluginResult":Lorg/apache/cordova/PluginResult;
    :cond_d
    const-string v1, "hide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    new-instance v7, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v7, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 272
    .restart local v7    # "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v7, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 273
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v7}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 462
    :cond_0
    return-void
.end method

.method public hardwareBack()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 891
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 892
    const-string v2, "InAppBrowser"

    const-string v3, "onActivityResult (For Android >= 5.0)"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_2

    .line 895
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 916
    :cond_1
    :goto_0
    return-void

    .line 898
    :cond_2
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 899
    iput-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 903
    :cond_3
    const-string v2, "InAppBrowser"

    const-string v3, "onActivityResult (For Android < 5.0)"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_5

    .line 906
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 910
    :cond_5
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_1

    .line 911
    if-eqz p3, :cond_6

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    const/4 v2, -0x1

    if-eq p2, v2, :cond_7

    :cond_6
    move-object v0, v1

    .line 913
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 914
    iput-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 911
    .end local v0    # "result":Landroid/net/Uri;
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    .line 315
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 294
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 297
    :cond_0
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    .line 287
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 307
    :cond_0
    return-void
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 400
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 401
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    :goto_0
    const-string v4, "com.android.browser.application_id"

    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 408
    const-string v4, ""

    .line 412
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v4

    .line 404
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 410
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 411
    .end local v2    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_2
    const-string v4, "InAppBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InAppBrowser: Error loading url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 410
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 528
    iput-boolean v11, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 529
    iput-boolean v11, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    .line 530
    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 531
    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    .line 533
    if-eqz p2, :cond_6

    .line 534
    const-string v10, "location"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 535
    .local v6, "show":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    .line 536
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 538
    :cond_0
    const-string v10, "zoom"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 539
    .local v9, "zoom":Ljava/lang/Boolean;
    if-eqz v9, :cond_1

    .line 540
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    .line 542
    :cond_1
    const-string v10, "hidden"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 543
    .local v2, "hidden":Ljava/lang/Boolean;
    if-eqz v2, :cond_2

    .line 544
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 546
    :cond_2
    const-string v10, "hardwareback"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 547
    .local v1, "hardwareBack":Ljava/lang/Boolean;
    if-eqz v1, :cond_7

    .line 548
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    .line 552
    :goto_0
    const-string v10, "mediaPlaybackRequiresUserAction"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 553
    .local v3, "mediaPlayback":Ljava/lang/Boolean;
    if-eqz v3, :cond_3

    .line 554
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    .line 556
    :cond_3
    const-string v10, "clearcache"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 557
    .local v0, "cache":Ljava/lang/Boolean;
    if-eqz v0, :cond_8

    .line 558
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    .line 565
    :cond_4
    :goto_1
    const-string v10, "shouldPauseOnSuspend"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 566
    .local v5, "shouldPause":Ljava/lang/Boolean;
    if-eqz v5, :cond_5

    .line 567
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    .line 569
    :cond_5
    const-string v10, "useWideViewPort"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 570
    .local v8, "wideViewPort":Ljava/lang/Boolean;
    if-eqz v8, :cond_6

    .line 571
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    .line 575
    .end local v0    # "cache":Ljava/lang/Boolean;
    .end local v1    # "hardwareBack":Ljava/lang/Boolean;
    .end local v2    # "hidden":Ljava/lang/Boolean;
    .end local v3    # "mediaPlayback":Ljava/lang/Boolean;
    .end local v5    # "shouldPause":Ljava/lang/Boolean;
    .end local v6    # "show":Ljava/lang/Boolean;
    .end local v8    # "wideViewPort":Ljava/lang/Boolean;
    .end local v9    # "zoom":Ljava/lang/Boolean;
    :cond_6
    iget-object v7, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 578
    .local v7, "thatWebView":Lorg/apache/cordova/CordovaWebView;
    new-instance v4, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    invoke-direct {v4, p0, p1, v7}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 852
    .local v4, "runnable":Ljava/lang/Runnable;
    iget-object v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 853
    const-string v10, ""

    return-object v10

    .line 550
    .end local v4    # "runnable":Ljava/lang/Runnable;
    .end local v7    # "thatWebView":Lorg/apache/cordova/CordovaWebView;
    .restart local v1    # "hardwareBack":Ljava/lang/Boolean;
    .restart local v2    # "hidden":Ljava/lang/Boolean;
    .restart local v6    # "show":Ljava/lang/Boolean;
    .restart local v9    # "zoom":Ljava/lang/Boolean;
    :cond_7
    sget-object v10, Lorg/apache/cordova/inappbrowser/InAppBrowser;->DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    goto :goto_0

    .line 560
    .restart local v0    # "cache":Ljava/lang/Boolean;
    .restart local v3    # "mediaPlayback":Ljava/lang/Boolean;
    :cond_8
    const-string v10, "clearsessioncache"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 561
    .restart local v0    # "cache":Ljava/lang/Boolean;
    if-eqz v0, :cond_4

    .line 562
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    goto :goto_1
.end method
